<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprSizeofValueSized extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ExprSizeofValueSized $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_block1 = $this->_io->readBytes(12);
            $_io__raw_block1 = new \Kaitai\Struct\Stream($this->_m__raw_block1);
            $this->_m_block1 = new \Kaitai\Struct\Tests\ExprSizeofValueSized\Block($_io__raw_block1, $this, $this->_root);
            $this->_m_more = $this->_io->readU2le();
        }
        protected $_m_sizeofBlockC;
        public function sizeofBlockC() {
            if ($this->_m_sizeofBlockC !== null)
                return $this->_m_sizeofBlockC;
            $this->_m_sizeofBlockC = 2;
            return $this->_m_sizeofBlockC;
        }
        protected $_m_selfSizeof;
        public function selfSizeof() {
            if ($this->_m_selfSizeof !== null)
                return $this->_m_selfSizeof;
            $this->_m_selfSizeof = 14;
            return $this->_m_selfSizeof;
        }
        protected $_m_sizeofBlockA;
        public function sizeofBlockA() {
            if ($this->_m_sizeofBlockA !== null)
                return $this->_m_sizeofBlockA;
            $this->_m_sizeofBlockA = 1;
            return $this->_m_sizeofBlockA;
        }
        protected $_m_sizeofBlockB;
        public function sizeofBlockB() {
            if ($this->_m_sizeofBlockB !== null)
                return $this->_m_sizeofBlockB;
            $this->_m_sizeofBlockB = 4;
            return $this->_m_sizeofBlockB;
        }
        protected $_m_sizeofBlock;
        public function sizeofBlock() {
            if ($this->_m_sizeofBlock !== null)
                return $this->_m_sizeofBlock;
            $this->_m_sizeofBlock = 12;
            return $this->_m_sizeofBlock;
        }
        protected $_m_block1;
        protected $_m_more;
        protected $_m__raw_block1;
        public function block1() { return $this->_m_block1; }
        public function more() { return $this->_m_more; }
        public function _raw_block1() { return $this->_m__raw_block1; }
    }
}

namespace Kaitai\Struct\Tests\ExprSizeofValueSized {
    class Block extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ExprSizeofValueSized $_parent = null, \Kaitai\Struct\Tests\ExprSizeofValueSized $_root = null) {
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
