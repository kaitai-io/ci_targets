<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidFailAnyofInt extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ValidFailAnyofInt $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readU1();
            if (!( (($this->foo() == 5) || ($this->foo() == 6) || ($this->foo() == 7) || ($this->foo() == 8) || ($this->foo() == 10) || ($this->foo() == 11) || ($this->foo() == 12) || ($this->foo() == 47)) )) {
                throw new \Kaitai\Struct\Error\ValidationNotAnyOfError($this->foo(), $this->_io(), "/seq/0");
            }
        }
        protected $_m_foo;
        public function foo() { return $this->_m_foo; }
    }
}
