<?php

namespace App\DataFixtures;

use App\Entity\Method;
use App\Entity\Story;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use App\Entity\Image;
use Doctrine\Bundle\FixturesBundle\Fixture;


class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker = Factory::create('FR-fr');

        //Manager stories

        for( $i = 1; $i <= 30; $i++){
        
        $stories = new Story();

        $title           = $faker->sentence();
        $introduction    = $faker->paragraph(2);        
        $content         = '<p>' .join('</p><p>', $faker->paragraphs(5)) .'</P>';
        
       

        $stories->setTitle($title)
           ->setIntroduction($introduction)
           ->setContent($content);           

           for($j = 1; $j <= mt_rand(2 , 5); $j++){
            $image = new Image();

            $image->setUrl($faker->imageUrl()) 
                  ->setCaption($faker->sentence());
            $stories->addCoverImage($image);
                  

        $manager->persist($image);
       }

        $manager->persist($stories);
    }

     for($m = 1; $m<=30; $m++){

         $method = new Method();

         $titre           = $faker->sentence();
         $description    = '<p>' .join('</p><p>', $faker->paragraphs(5)) .'</P>';


         $method->setTitle($titre)
             ->setDescription($description);

         for($p = 1; $p <= mt_rand(2 , 5); $p++){
             $image = new Image();

             $image->setUrl($faker->imageUrl())
                   ->setCaption($faker->sentence());
             $method->addMethodCoverImage($image);


             $manager->persist($image);
         }
         $manager->persist($method);

     }
      $manager->flush();
     
    }
}
