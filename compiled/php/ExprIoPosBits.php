<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprIoPosBits extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ExprIoPosBits $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readBitsIntBe(3);
            if ($this->_io()->pos() == 1) {
                $this->_m_bar = $this->_io->readBitsIntBe(5);
            }
            if ($this->_io()->pos() == 1) {
                $this->_m_baz = $this->_io->readBitsIntBe(1) != 0;
            }
            if ($this->_io()->pos() == 2) {
                $this->_m_qux = $this->_io->readBitsIntBe(7);
            }
        }
        public function foo() { return $this->_m_foo; }
        public function bar() { return $this->_m_bar; }
        public function baz() { return $this->_m_baz; }
        public function qux() { return $this->_m_qux; }
        protected $_m_foo;
        protected $_m_bar;
        protected $_m_baz;
        protected $_m_qux;
    }
}
