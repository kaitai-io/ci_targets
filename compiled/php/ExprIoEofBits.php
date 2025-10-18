<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprIoEofBits extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ExprIoEofBits $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
        }

        public function _read() {
            $this->_m_foo = $this->_io->readBitsIntBe(20);
            if (!($this->_io()->isEof())) {
                $this->_m_bar = $this->_io->readBitsIntBe(4);
            }
            if (!($this->_io()->isEof())) {
                $this->_m_baz = $this->_io->readBitsIntBe(16);
            }
            $this->_io->alignToByte();
            $this->_m_align = $this->_io->readBytes(0);
            if (!($this->_io()->isEof())) {
                $this->_m_qux = $this->_io->readBitsIntBe(16);
            }
        }
        public function foo() { return $this->_m_foo; }
        public function bar() { return $this->_m_bar; }
        public function baz() { return $this->_m_baz; }
        public function align() { return $this->_m_align; }
        public function qux() { return $this->_m_qux; }
        protected $_m_foo;
        protected $_m_bar;
        protected $_m_baz;
        protected $_m_align;
        protected $_m_qux;
    }
}
