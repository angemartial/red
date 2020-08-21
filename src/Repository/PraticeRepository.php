<?php

namespace App\Repository;

use App\Entity\Pratice;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Pratice|null find($id, $lockMode = null, $lockVersion = null)
 * @method Pratice|null findOneBy(array $criteria, array $orderBy = null)
 * @method Pratice[]    findAll()
 * @method Pratice[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PraticeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Pratice::class);
    }

    // /**
    //  * @return Pratice[] Returns an array of Pratice objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('p.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Pratice
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
