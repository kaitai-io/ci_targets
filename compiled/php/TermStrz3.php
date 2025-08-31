<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class TermStrz3 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\TermStrz3 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_s1 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(124, false, false, true), "UTF-8");
            $this->_m_s2 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(64, false, false, true), "UTF-8");
            $this->_m_s3 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(64, false, true, true), "UTF-8");
        }
        protected $_m_s1;
        protected $_m_s2;
        protected $_m_s3;
        public function s1() { return $this->_m_s1; }
        public function s2() { return $this->_m_s2; }
        public function s3() { return $this->_m_s3; }
    }
}
