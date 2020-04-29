<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class BitsEnum extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\BitsEnum $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = $this->_io->readBitsIntBe(4);
            $this->_m_two = $this->_io->readBitsIntBe(8);
            $this->_m_three = $this->_io->readBitsIntBe(1);
        }
        protected $_m_one;
        protected $_m_two;
        protected $_m_three;
        public function one() { return $this->_m_one; }
        public function two() { return $this->_m_two; }
        public function three() { return $this->_m_three; }
    }
}

namespace Kaitai\Struct\Tests\BitsEnum {
    class Animal {
        const CAT = 0;
        const DOG = 1;
        const HORSE = 4;
        const PLATYPUS = 5;
    }
}
