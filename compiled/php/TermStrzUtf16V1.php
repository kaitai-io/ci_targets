<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class TermStrzUtf16V1 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\TermStrzUtf16V1 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_s1 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTermMulti("\x00\x00", false, true, true), "UTF-16LE");
            $this->_m_s2 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTermMulti("\x00\x00", false, false, true), "UTF-16LE");
            $this->_m_term = $this->_io->readU2le();
            $this->_m_s3 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTermMulti("\x00\x00", true, true, true), "UTF-16LE");
        }
        protected $_m_s1;
        protected $_m_s2;
        protected $_m_term;
        protected $_m_s3;
        public function s1() { return $this->_m_s1; }
        public function s2() { return $this->_m_s2; }
        public function term() { return $this->_m_term; }
        public function s3() { return $this->_m_s3; }
    }
}
