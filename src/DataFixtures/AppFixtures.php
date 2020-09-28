<?php

namespace App\DataFixtures;

use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use App\Entity\Image;
use App\Entity\news;
use Doctrine\Bundle\FixturesBundle\Fixture;


class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker = Factory::create('FR-fr');

        //Manager news

        for( $i = 1; $i <= 30; $i++){
        
        $article = new news();

        $title           = $faker->sentence();
        $introduction    = $faker->paragraph(2);        
        $content         = '<p>' .join('</p><p>', $faker->paragraphs(5)) .'</P>';
        
       

        $article->setTitle($title) 
           ->setIntroduction($introduction)
           ->setContent($content);           

           for($j = 1; $j <= mt_rand(2 , 5); $j++){
            $image = new Image();

            $image->setUrl($faker->imageUrl()) 
                  ->setCaption($faker->sentence());
            $article->addImage($image);
                  

        $manager->persist($image);
       }          


        $manager->persist($article);
    }

      $manager->flush();
     
    }
}
