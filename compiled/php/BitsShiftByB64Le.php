<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class BitsShiftByB64Le extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\BitsShiftByB64Le $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_a = $this->_io->readBitsIntLe(64);
            $this->_m_b = $this->_io->readBitsIntLe(8);
        }
        public function a() { return $this->_m_a; }
        public function b() { return $this->_m_b; }
        protected $_m_a;
        protected $_m_b;
    }
}
