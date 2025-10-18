<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidFailEqStr extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ValidFailEqStr $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(4), "ASCII");
            if (!($this->_m_foo == "BACK")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("BACK", $this->_m_foo, $this->_io, "/seq/0");
            }
        }
        public function foo() { return $this->_m_foo; }
        protected $_m_foo;
    }
}
