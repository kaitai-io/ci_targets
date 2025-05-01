<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidFailExpr extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ValidFailExpr $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readU1();
            $_ = $this->_m_foo;
            if (!($_ == 1)) {
                throw new \Kaitai\Struct\Error\ValidationExprError($this->_m_foo, $this->_io, "/seq/0");
            }
            $this->_m_bar = $this->_io->readS2le();
            $_ = $this->_m_bar;
            if (!( (($_ < -190) || ($_ > -190)) )) {
                throw new \Kaitai\Struct\Error\ValidationExprError($this->_m_bar, $this->_io, "/seq/1");
            }
        }
        protected $_m_foo;
        protected $_m_bar;
        public function foo() { return $this->_m_foo; }
        public function bar() { return $this->_m_bar; }
    }
}
