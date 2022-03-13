<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class BitsUnalignedB64Be extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\BitsUnalignedB64Be $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_a = $this->_io->readBitsIntBe(1) != 0;
            $this->_m_b = $this->_io->readBitsIntBe(64);
            $this->_m_c = $this->_io->readBitsIntBe(7);
        }
        protected $_m_a;
        protected $_m_b;
        protected $_m_c;
        public function a() { return $this->_m_a; }
        public function b() { return $this->_m_b; }
        public function c() { return $this->_m_c; }
    }
}
