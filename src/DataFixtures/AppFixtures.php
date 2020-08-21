<?php

namespace App\DataFixtures;

use Faker\Factory;
use App\Entity\Articles;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker = Factory::create('FR-fr');

        //Manager Articles 

        for( $i = 1; $i <= 30; $i++){
        
        $article = new Articles();

        $title           = $faker->sentence();
        $introduction    = $faker->paragraph(2);
        $filename        = $faker->imageUrl(1000,350);
        $content         = '<p>' .join('</p><p>', $faker->paragraphs(5)) .'</P>';
        
       

        $article->setTitle($title) 
           ->setIntroduction($introduction)
           ->setContent($content)
           ->setFilename($filename);
           


        $manager->persist($article);
    }

      $manager->flush();
     
    }
}
