<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprSizeofType0 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ExprSizeofType0 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_sizeofBlock;
        public function sizeofBlock() {
            if ($this->_m_sizeofBlock !== null)
                return $this->_m_sizeofBlock;
            $this->_m_sizeofBlock = 7;
            return $this->_m_sizeofBlock;
        }
    }
}

namespace Kaitai\Struct\Tests\ExprSizeofType0 {
    class Block extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ExprSizeofType0 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_a = $this->_io->readU1();
            $this->_m_b = $this->_io->readU4le();
            $this->_m_c = $this->_io->readBytes(2);
        }
        protected $_m_a;
        protected $_m_b;
        protected $_m_c;
        public function a() { return $this->_m_a; }
        public function b() { return $this->_m_b; }
        public function c() { return $this->_m_c; }
    }
}
