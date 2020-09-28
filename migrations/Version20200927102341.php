<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200927102341 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE articles_image DROP FOREIGN KEY FK_2DDF2CAB1EBAF6CC');
        $this->addSql('CREATE TABLE news (id INT AUTO_INCREMENT NOT NULL, updated_at DATETIME NOT NULL, title VARCHAR(255) NOT NULL, slug VARCHAR(255) NOT NULL, introduction LONGTEXT NOT NULL, content LONGTEXT NOT NULL, state TINYINT(1) DEFAULT \'0\' NOT NULL, created_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE actuality_image (actuality_id INT NOT NULL, image_id INT NOT NULL, INDEX IDX_1F620EE3B84BD854 (actuality_id), INDEX IDX_1F620EE33DA5256D (image_id), PRIMARY KEY(actuality_id, image_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE actuality_image ADD CONSTRAINT FK_1F620EE3B84BD854 FOREIGN KEY (actuality_id) REFERENCES news (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE actuality_image ADD CONSTRAINT FK_1F620EE33DA5256D FOREIGN KEY (image_id) REFERENCES image (id) ON DELETE CASCADE');
        $this->addSql('DROP TABLE articles');
        $this->addSql('DROP TABLE articles_image');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE actuality_image DROP FOREIGN KEY FK_1F620EE3B84BD854');
        $this->addSql('CREATE TABLE articles (id INT AUTO_INCREMENT NOT NULL, title VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, slug VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, introduction LONGTEXT CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, content LONGTEXT CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, state TINYINT(1) DEFAULT \'0\' NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE articles_image (articles_id INT NOT NULL, image_id INT NOT NULL, INDEX IDX_2DDF2CAB3DA5256D (image_id), INDEX IDX_2DDF2CAB1EBAF6CC (articles_id), PRIMARY KEY(articles_id, image_id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('ALTER TABLE articles_image ADD CONSTRAINT FK_2DDF2CAB1EBAF6CC FOREIGN KEY (articles_id) REFERENCES articles (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE articles_image ADD CONSTRAINT FK_2DDF2CAB3DA5256D FOREIGN KEY (image_id) REFERENCES image (id) ON DELETE CASCADE');
        $this->addSql('DROP TABLE news');
        $this->addSql('DROP TABLE actuality_image');
    }
}
