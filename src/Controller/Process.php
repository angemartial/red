<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class Process extends AbstractController
{
    /**
     * @Route("/process", name="process_index")
     */
    public function index()
    {
        return $this->render('process/process.html.twig', [
            'controller_name' => 'Process',
        ]);
    }
}
