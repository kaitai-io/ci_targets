<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidFailMinInt extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ValidFailMinInt $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readU1();
            if (!($this->_m_foo >= 123)) {
                throw new \Kaitai\Struct\Error\ValidationLessThanError(123, $this->_m_foo, $this->_io, "/seq/0");
            }
        }
        protected $_m_foo;
        public function foo() { return $this->_m_foo; }
    }
}
