<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class BitsByteAligned extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\BitsByteAligned $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = $this->_io->readBitsIntBe(6);
            $this->_io->alignToByte();
            $this->_m_byte1 = $this->_io->readU1();
            $this->_m_two = $this->_io->readBitsIntBe(3);
            $this->_m_three = $this->_io->readBitsIntBe(1) != 0;
            $this->_io->alignToByte();
            $this->_m_byte2 = $this->_io->readU1();
            $this->_m_four = $this->_io->readBitsIntBe(14);
            $this->_io->alignToByte();
            $this->_m_byte3 = $this->_io->readBytes(1);
            $this->_m_fullByte = $this->_io->readBitsIntBe(8);
            $this->_io->alignToByte();
            $this->_m_byte4 = $this->_io->readU1();
        }
        protected $_m_one;
        protected $_m_byte1;
        protected $_m_two;
        protected $_m_three;
        protected $_m_byte2;
        protected $_m_four;
        protected $_m_byte3;
        protected $_m_fullByte;
        protected $_m_byte4;
        public function one() { return $this->_m_one; }
        public function byte1() { return $this->_m_byte1; }
        public function two() { return $this->_m_two; }
        public function three() { return $this->_m_three; }
        public function byte2() { return $this->_m_byte2; }
        public function four() { return $this->_m_four; }
        public function byte3() { return $this->_m_byte3; }
        public function fullByte() { return $this->_m_fullByte; }
        public function byte4() { return $this->_m_byte4; }
    }
}
