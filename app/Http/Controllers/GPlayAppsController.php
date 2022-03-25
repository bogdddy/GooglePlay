<?php

namespace App\Http\Controllers;

use App\Models\App;
use App\Models\AppID;
use App\Models\Category;
use App\Models\Developer;
use App\Models\Package;
use App\Models\Rating;
use Illuminate\Http\Request;

class GPlayAppsController extends Controller
{
    public function getAppsInfo()
    {
        //* Obtenim les id de les apps de la database
        $appIDs = Package::all();

        foreach ($appIDs as $appID) {
            //* obtenim les dades de google play
            $gplay = new \Nelexa\GPlay\GPlayApps($defaultLocale = 'ca_ES', $defaultCountry = 'es');
            $appInfo = $gplay->getAppInfo($appID);

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
                    "release_date" => $appInfo->getReleaseDate(),
                    "category_id" => $category->id,
                    "developer_id" => $developer->id
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
                    "two_stars" => $ratingInfo->getSecondStars(),
                    "one_star" => $ratingInfo->getOneStar()
                ]
            );
            
            $videoInfo = $appInfo->getVideo();
            $app->video()->updateOrCreate(
                [
                    "app_id" => $app->id
                ],
                [
                    "url" => $videoInfo->getVideoUrl(),
                    "image_url" => $videoInfo->getImageUrl(),
                    "youtube_id" => $videoInfo->getYoutubeId()
                ]
            );

            $icon = $appInfo->getIcon();
            $app->images()->updateOrCreate(
                [
                    "app_id" => $app->id,
                    "type_id" => 1
                ],
                [
                    "url" => $icon->getUrl(),
                    "original_size_url" => $icon->getOriginalSizeUrl(),
                    "binary_image_content" => $icon->getBinaryImageContent()
                ]
            );

            $cover = $appInfo->getCover();
            $app->images()->updateOrCreate(
                [
                    "app_id" => $app->id,
                    "type_id" => 2
                ],
                [
                    "url" => $cover->getUrl(),
                    "original_size_url" => $cover->getOriginalSizeUrl(),
                    "binary_image_content" => $cover->getBinaryImageContent()
                ]
            );

            $screenshots = $appInfo->getIcon();
            foreach ($screenshots as $screenshot) {
                $app->images()->updateOrCreate(
                    [
                        "app_id" => $app->id,
                        "type_id" => 3,
                        "url" => $screenshot->getUrl(),
                    ],
                    [
                        "original_size_url" => $screenshot->getOriginalSizeUrl(),
                        "binary_image_content" => $screenshot->getBinaryImageContent()
                    ]
                );
            }
        }

        return true;
    }
}
