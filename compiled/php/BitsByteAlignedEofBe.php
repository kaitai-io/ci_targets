<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class BitsByteAlignedEofBe extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\BitsByteAlignedEofBe $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_prebuf = $this->_io->readBytes(8);
            $this->_m_bits = $this->_io->readBitsIntBe(31);
        }
        protected $_m_prebuf;
        protected $_m_bits;
        public function prebuf() { return $this->_m_prebuf; }
        public function bits() { return $this->_m_bits; }
    }
}
