<?php

namespace App\Http\Controllers;

use App\Models\App;
use App\Models\AppID;
use App\Models\Category;
use App\Models\Developer;
use App\Models\History;
use App\Models\Image;
use App\Models\Package;
use App\Models\Rating;
use App\Models\Video;
use Illuminate\Http\Request;
use Nelexa\GPlay\Model\AppInfo;

class GPlayAppsController extends Controller
{

    //Limit de packages que agafa per consulta
    private static $LIMIT_COUNT_APPS = 10;

    /**
     * getAppsInfo
     * Obtenim info actualitzada de les apps de google play
     * insertades a la taula packages
     * @return void
     */
    //Per fer test
    //public function getAppsInfo($appDB){
    public function getAppsInfo()
    {

        //* Obtenim les id de les apps de la database

        //Comenta la consulta i el foreach per fer test
        $appsDB = Package::orderBy('updated_at', 'asc')->limit(GPlayAppsController::$LIMIT_COUNT_APPS)->get();

        foreach ($appsDB as $appDB) {
            //* obtenim les dades de google play
            $gplay = new \Nelexa\GPlay\GPlayApps($defaultLocale = 'ca_ES', $defaultCountry = 'es');
            $appInfo = $gplay->getAppInfo($appDB->app_url);

            //Hem tret la següent part en funcions més petites ja que era una funcio massa llarga
            $category = $this->insertarActualitzarCategory($appInfo);

            $developer = $this->insertarActualitzarDeveloper($appInfo);

            $app = $this->insertarActualitzarApp($appInfo,$category,$developer);

            $this->insertarActualitzarRating($appInfo,$app);

            $this->insertarActualitzarVideo($appInfo,$app);

            $this->insertarActualitzaIcon($appInfo,$app);

            $this->insertarActualitzarCover($appInfo,$app);

            $this->insertarActualitzarScreenshot($appInfo,$app);

            History::updateHistory($appDB->app_url,$appInfo->getInstalls());

            $appDB->touch();
        }

    }

    /**
     * Inserta o actualitza en cas que ja existeixi
     * a la taula Categories
     * @param AppInfo $appInfo
     * @return Category $category
     */
    private function insertarActualitzarCategory (AppInfo $appInfo)
    {

            $categoryInfo = $appInfo->getCategory();
            $category = Category::updateOrCreate(
                [
                    "google_play_id" => $categoryInfo->getId()
                ],
                [
                    "name" => $categoryInfo->getName(),
                    "is_games_category" => $categoryInfo->isGamesCategory(),
                    "is_family_category" => $categoryInfo->isFamilyCategory(),
                    "is_application_category" => $categoryInfo->isApplicationCategory()
                ]
            );

            return $category;

    }

    /**
     * Inserta o actualitza en cas que ja existeixi
     * a la taula Developer
     * @param AppInfo $appInfo
     * @return Developer $developer
     */
    private function insertarActualitzarDeveloper (AppInfo $appInfo){

        $developerInfo = $appInfo->getDeveloper();
        $developer = Developer::updateOrCreate(
            [
                "google_play_id" => $developerInfo->getId()
            ],
            [
                "name" => $developerInfo->getName(),
                "url" => $developerInfo->getUrl(),
                "website" => $developerInfo->getWebsite()
            ]
        );

        return $developer;

    }

    /**
     * Inserta o actualitza en cas que ja existeixi
     * a la taula Apps
     * @param AppInfo $appInfo
     * @param Category $category
     * @param Developer $developer
     * @return App $app
     */
    private function insertarActualitzarApp(AppInfo $appInfo,Category $category,Developer $developer){

        $app = App::updateOrCreate(
            [
                "google_play_id" => $appInfo->getId()
            ],
            [
                "name" => $appInfo->getName(),
                "country" => $appInfo->getCountry(),
                "url" => $appInfo->getUrl(),
                "score" => $appInfo->getScore(),
                "installs" => $appInfo->getInstalls(),
                "price" => $appInfo->getPrice(),
                "description" => $appInfo->getDescription(),
                "release_date" => $appInfo->getReleased(),
                "category_id" => $category->id,
                "developer_id" => $developer->id,
                "update_date" => $appInfo->getUpdated()
            ]
        );

        return $app;

    }

    /**
     * Inserta o actualitza en cas que ja existeixi
     * a la taula Apps
     * @param AppInfo $appInfo
     * @param App $app
     */
    private function insertarActualitzarRating(AppInfo $appInfo,App $app){

        $ratingInfo = $appInfo->getHistogramRating();
        $app->rating()->updateOrCreate(
            [
                "app_id" => $app->id
            ],
            [
                "five_stars" => $ratingInfo->getFiveStars(),
                "four_stars" => $ratingInfo->getFourStars(),
                "three_stars" => $ratingInfo->getThreeStars(),
                "two_stars" => $ratingInfo->getTwoStars(),
                "one_star" => $ratingInfo->getOneStar()
            ]
        );

    }

    /**
     * Inserta o actualitza en cas que ja existeixi
     * a la taula Videos
     * @param AppInfo $appInfo
     * @param App $app
     */
    private function insertarActualitzarVideo(AppInfo $appInfo,App $app){

        $videoInfo = $appInfo->getVideo();
        if (isset($videoInfo)) {
            Video::updateOrCreate(
                [
                    "app_id" => $app->id
                ],
                [
                    'image_url' => $videoInfo->getImageUrl(),
                    'youtube_id' => $videoInfo->getYoutubeId(),
                    'url' => $videoInfo->getVideoUrl()
                ]
            );
        }

    }

    /**
     * Inserta o actualitza en cas que ja existeixi
     * a la taula Images
     * @param AppInfo $appInfo
     * @param App $app
     */
    private function insertarActualitzaIcon(AppInfo $appInfo,App $app){
        $icon = $appInfo->getIcon();

        if (isset($icon)) {
            Image::updateOrCreate(
                [
                    "app_id" => $app->id,
                    "type_id" => 1
                ],
                [
                    "url" => $icon->getUrl()
                ]
            );

        }
    }

    /**
     * Inserta o actualitza en cas que ja existeixi
     * a la taula Images
     * @param AppInfo $appInfo
     * @param App $app
     */
    private function insertarActualitzarCover(AppInfo $appInfo,App $app){
        $cover = $appInfo->getCover();
        if (isset($cover)) {
            Image::updateOrCreate(
                [
                    "app_id" => $app->id,
                    "type_id" => 2
                ],
                [
                    "url" => $cover->getUrl()
                ]
            );
        }
    }

    /**
     * Inserta o actualitza en cas que ja existeixi
     * a la taula Images
     * @param AppInfo $appInfo
     * @param App $app
     */
    private function insertarActualitzarScreenshoot(AppInfo $appInfo, App $app){
        $screenshots = $appInfo->getScreenshots();
        if (count($screenshots) > 0) {
            foreach ($screenshots as $screenshot) {
                Image::updateOrCreate(
                    [
                        "app_id" => $app->id,
                        "type_id" => 3
                    ],
                    [
                        "url" => $screenshot->getUrl()
                    ]
                );
            }
        }
    }

}
