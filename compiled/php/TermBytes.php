<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class TermBytes extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\TermBytes $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_s1 = $this->_io->readBytesTerm(124, false, true, true);
            $this->_m_s2 = $this->_io->readBytesTerm(124, false, false, true);
            $this->_m_s3 = $this->_io->readBytesTerm(64, true, true, true);
        }
        protected $_m_s1;
        protected $_m_s2;
        protected $_m_s3;
        public function s1() { return $this->_m_s1; }
        public function s2() { return $this->_m_s2; }
        public function s3() { return $this->_m_s3; }
    }
}
