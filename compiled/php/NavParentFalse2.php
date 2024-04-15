<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NavParentFalse2 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\NavParentFalse2 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_parentless = new \Kaitai\Struct\Tests\NavParentFalse2\Child($this->_io, null, $this->_root);
        }
        protected $_m_parentless;
        public function parentless() { return $this->_m_parentless; }
    }
}

namespace Kaitai\Struct\Tests\NavParentFalse2 {
    class Child extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\NavParentFalse2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readU1();
        }
        protected $_m_foo;
        public function foo() { return $this->_m_foo; }
    }
}
