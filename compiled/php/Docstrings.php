<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

/**
 * One-liner description of a type.
 */

namespace Kaitai\Struct\Tests {
    class Docstrings extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\Docstrings $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = $this->_io->readU1();
        }
        protected $_m_three;

        /**
         * And yet another one for value instance "three"
         */
        public function three() {
            if ($this->_m_three !== null)
                return $this->_m_three;
            $this->_m_three = 66;
            return $this->_m_three;
        }
        protected $_m_two;

        /**
         * Another description for parse instance "two"
         */
        public function two() {
            if ($this->_m_two !== null)
                return $this->_m_two;
            $_pos = $this->_io->pos();
            $this->_io->seek(0);
            $this->_m_two = $this->_io->readU1();
            $this->_io->seek($_pos);
            return $this->_m_two;
        }
        protected $_m_one;

        /**
         * A pretty verbose description for sequence attribute "one"
         */
        public function one() { return $this->_m_one; }
    }
}

/**
 * This subtype is never used, yet has a very long description
 * that spans multiple lines. It should be formatted accordingly,
 * even in languages that have single-line comments for
 * docstrings. Actually, there's even a MarkDown-style list here
 * with several bullets:
 * 
 * * one
 * * two
 * * three
 * 
 * And the text continues after that. Here's a MarkDown-style link:
 * [woohoo](http://example.com) - one day it will be supported as
 * well.
 */

namespace Kaitai\Struct\Tests\Docstrings {
    class ComplexSubtype extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\Docstrings $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}
