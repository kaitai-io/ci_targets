<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class BitsSignedB64Le extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\BitsSignedB64Le $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_aNum = $this->_io->readBitsIntLe(63);
            $this->_m_aBit = $this->_io->readBitsIntLe(1) != 0;
            $this->_m_bNum = $this->_io->readBitsIntLe(63);
            $this->_m_bBit = $this->_io->readBitsIntLe(1) != 0;
        }
        protected $_m_aNum;
        protected $_m_aBit;
        protected $_m_bNum;
        protected $_m_bBit;
        public function aNum() { return $this->_m_aNum; }
        public function aBit() { return $this->_m_aBit; }
        public function bNum() { return $this->_m_bNum; }
        public function bBit() { return $this->_m_bBit; }
    }
}
