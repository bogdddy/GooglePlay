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

class GPlayAppsController extends Controller
{
    /**
     * getAppsInfo
     * Obtenim info actualitzada de les apps de google play
     * insertades a la taula packages
     * @return void
     */
    public function getAppsInfo()
    {
        //* Obtenim les id de les apps de la database
        $appsDB = Package::orderBy('updated_at', 'asc')->limit(10)->get();

        foreach ($appsDB as $appDB) {
            //* obtenim les dades de google play
            $gplay = new \Nelexa\GPlay\GPlayApps($defaultLocale = 'ca_ES', $defaultCountry = 'es');
            $appInfo = $gplay->getAppInfo($appDB->app_url);

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

            History::updateHistory($appDB->app_url,$appInfo->getInstalls());

            $appDB->touch();
        }

    }
}
