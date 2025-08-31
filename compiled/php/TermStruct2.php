<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class TermStruct2 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\TermStruct2 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_s1 = $this->_io->readBytesTerm(124, false, true, true);
            $_io__raw_s1 = new \Kaitai\Struct\Stream($this->_m__raw_s1);
            $this->_m_s1 = new \Kaitai\Struct\Tests\TermStruct2\BytesWrapper($_io__raw_s1, $this, $this->_root);
            $this->_m__raw_s2 = $this->_io->readBytesTerm(124, true, true, true);
            $_io__raw_s2 = new \Kaitai\Struct\Stream($this->_m__raw_s2);
            $this->_m_s2 = new \Kaitai\Struct\Tests\TermStruct2\BytesWrapper($_io__raw_s2, $this, $this->_root);
            $this->_m__raw_s3 = $this->_io->readBytesTerm(64, false, false, true);
            $_io__raw_s3 = new \Kaitai\Struct\Stream($this->_m__raw_s3);
            $this->_m_s3 = new \Kaitai\Struct\Tests\TermStruct2\BytesWrapper($_io__raw_s3, $this, $this->_root);
        }
        protected $_m_s1;
        protected $_m_s2;
        protected $_m_s3;
        protected $_m__raw_s1;
        protected $_m__raw_s2;
        protected $_m__raw_s3;
        public function s1() { return $this->_m_s1; }
        public function s2() { return $this->_m_s2; }
        public function s3() { return $this->_m_s3; }
        public function _raw_s1() { return $this->_m__raw_s1; }
        public function _raw_s2() { return $this->_m__raw_s2; }
        public function _raw_s3() { return $this->_m__raw_s3; }
    }
}

namespace Kaitai\Struct\Tests\TermStruct2 {
    class BytesWrapper extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\TermStruct2 $_parent = null, ?\Kaitai\Struct\Tests\TermStruct2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = $this->_io->readBytesFull();
        }
        protected $_m_value;
        public function value() { return $this->_m_value; }
    }
}
