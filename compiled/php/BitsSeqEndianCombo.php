<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class BitsSeqEndianCombo extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\BitsSeqEndianCombo $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_be1 = $this->_io->readBitsIntBe(6);
            $this->_m_be2 = $this->_io->readBitsIntBe(10);
            $this->_m_le3 = $this->_io->readBitsIntLe(8);
            $this->_m_be4 = $this->_io->readBitsIntBe(8);
            $this->_m_le5 = $this->_io->readBitsIntLe(5);
            $this->_m_le6 = $this->_io->readBitsIntLe(6);
            $this->_m_le7 = $this->_io->readBitsIntLe(5);
            $this->_m_be8 = $this->_io->readBitsIntBe(1) != 0;
        }
        protected $_m_be1;
        protected $_m_be2;
        protected $_m_le3;
        protected $_m_be4;
        protected $_m_le5;
        protected $_m_le6;
        protected $_m_le7;
        protected $_m_be8;
        public function be1() { return $this->_m_be1; }
        public function be2() { return $this->_m_be2; }
        public function le3() { return $this->_m_le3; }
        public function be4() { return $this->_m_be4; }
        public function le5() { return $this->_m_le5; }
        public function le6() { return $this->_m_le6; }
        public function le7() { return $this->_m_le7; }
        public function be8() { return $this->_m_be8; }
    }
}
