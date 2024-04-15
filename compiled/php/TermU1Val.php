<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class TermU1Val extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\TermU1Val $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readBytesTerm(227, false, false, true);
            $this->_m_bar = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(171, true, true, true), "UTF-8");
        }
        protected $_m_foo;
        protected $_m_bar;
        public function foo() { return $this->_m_foo; }
        public function bar() { return $this->_m_bar; }
    }
}
