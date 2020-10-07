<?php

namespace App\Form;

use App\Entity\Story;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class StoryType extends AbstractType
{
    /**
     * permet d'avoir la configuration de base d'un champ
     *
     * @param string $label
     * @param string $placeholder
     * @param array $options
     * @return array
     */
    protected function getConfiguration($label, $placeholder, $options = [])
    {
        return array_merge_recursive( [

            'label' => $label,
            'attr' => [
                'placeholder' => $placeholder
            ]
        ], $options);

    }

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder

            ->add('title',TextType::class, $this->getConfiguration("Titre","Entrez le titre"))
            ->add('slug',TextType::class, $this->getConfiguration("Adresse","Tapez l'url"))
            ->add('introduction',TextType::class, $this->getConfiguration("Introduction","description générale de l'annonce"))
            ->add('content', TextareaType::class, $this->getConfiguration("Description","tapez le texte"))
            ->add('coverImage')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Story::class,
        ]);
    }
}
