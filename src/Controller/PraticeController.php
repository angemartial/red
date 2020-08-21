<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class PraticeController extends AbstractController
{
    /**
     * @Route("/pratice", name="pratice")
     */
    public function index()
    {
        return $this->render('pratice/pratice.html.twig', [
            'controller_name' => 'PraticeController',
        ]);
    }
}
