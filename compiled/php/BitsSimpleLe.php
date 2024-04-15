<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class BitsSimpleLe extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\BitsSimpleLe $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_byte1 = $this->_io->readBitsIntLe(8);
            $this->_m_byte2 = $this->_io->readBitsIntLe(8);
            $this->_m_bitsA = $this->_io->readBitsIntLe(1) != 0;
            $this->_m_bitsB = $this->_io->readBitsIntLe(3);
            $this->_m_bitsC = $this->_io->readBitsIntLe(4);
            $this->_m_largeBits1 = $this->_io->readBitsIntLe(10);
            $this->_m_spacer = $this->_io->readBitsIntLe(3);
            $this->_m_largeBits2 = $this->_io->readBitsIntLe(11);
            $this->_io->alignToByte();
            $this->_m_normalS2 = $this->_io->readS2be();
            $this->_m_byte8910 = $this->_io->readBitsIntLe(24);
            $this->_m_byte11To14 = $this->_io->readBitsIntLe(32);
            $this->_m_byte15To19 = $this->_io->readBitsIntLe(40);
            $this->_m_byte20To27 = $this->_io->readBitsIntLe(64);
        }
        protected $_m_testIfB1;
        public function testIfB1() {
            if ($this->_m_testIfB1 !== null)
                return $this->_m_testIfB1;
            if ($this->bitsA() == true) {
                $this->_m_testIfB1 = 123;
            }
            return $this->_m_testIfB1;
        }
        protected $_m_byte1;
        protected $_m_byte2;
        protected $_m_bitsA;
        protected $_m_bitsB;
        protected $_m_bitsC;
        protected $_m_largeBits1;
        protected $_m_spacer;
        protected $_m_largeBits2;
        protected $_m_normalS2;
        protected $_m_byte8910;
        protected $_m_byte11To14;
        protected $_m_byte15To19;
        protected $_m_byte20To27;
        public function byte1() { return $this->_m_byte1; }
        public function byte2() { return $this->_m_byte2; }
        public function bitsA() { return $this->_m_bitsA; }
        public function bitsB() { return $this->_m_bitsB; }
        public function bitsC() { return $this->_m_bitsC; }
        public function largeBits1() { return $this->_m_largeBits1; }
        public function spacer() { return $this->_m_spacer; }
        public function largeBits2() { return $this->_m_largeBits2; }
        public function normalS2() { return $this->_m_normalS2; }
        public function byte8910() { return $this->_m_byte8910; }
        public function byte11To14() { return $this->_m_byte11To14; }
        public function byte15To19() { return $this->_m_byte15To19; }
        public function byte20To27() { return $this->_m_byte20To27; }
    }
}
