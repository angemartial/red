<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200920114540 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE articles_image (articles_id INT NOT NULL, image_id INT NOT NULL, INDEX IDX_2DDF2CAB1EBAF6CC (articles_id), INDEX IDX_2DDF2CAB3DA5256D (image_id), PRIMARY KEY(articles_id, image_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE articles_image ADD CONSTRAINT FK_2DDF2CAB1EBAF6CC FOREIGN KEY (articles_id) REFERENCES stories (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE articles_image ADD CONSTRAINT FK_2DDF2CAB3DA5256D FOREIGN KEY (image_id) REFERENCES image (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE articles_image');
    }
}
