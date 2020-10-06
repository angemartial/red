<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class AboutUsController extends AbstractController
{
    /**
     * @Route("/aboutus", name="about_us_index")
     */
    public function index()
    {
        return $this->render('about_us/about_us.html.twig', [
            'controller_name' => 'AboutUsController',
        ]);
    }
}
