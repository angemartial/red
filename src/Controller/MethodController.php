<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class MethodController extends AbstractController
{
    /**
     * @Route("/methods", name="methods_index")
     */
    public function index()
    {
        return $this->render('method/methods.html.twig', [
            'controller_name' => 'MethodController',
        ]);
    }
}
