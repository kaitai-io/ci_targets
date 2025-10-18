<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NavParentFalse extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\NavParentFalse $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_childSize = $this->_io->readU1();
            $this->_m_elementA = new \Kaitai\Struct\Tests\NavParentFalse\ParentA($this->_io, $this, $this->_root);
            $this->_m_elementB = new \Kaitai\Struct\Tests\NavParentFalse\ParentB($this->_io, $this, $this->_root);
        }
        public function childSize() { return $this->_m_childSize; }
        public function elementA() { return $this->_m_elementA; }
        public function elementB() { return $this->_m_elementB; }
        protected $_m_childSize;
        protected $_m_elementA;
        protected $_m_elementB;
    }
}

namespace Kaitai\Struct\Tests\NavParentFalse {
    class Child extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\NavParentFalse\ParentA $_parent = null, ?\Kaitai\Struct\Tests\NavParentFalse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_code = $this->_io->readU1();
            if ($this->code() == 73) {
                $this->_m_more = $this->_io->readBytes($this->_parent()->_parent()->childSize());
            }
        }
        public function code() { return $this->_m_code; }
        public function more() { return $this->_m_more; }
        protected $_m_code;
        protected $_m_more;
    }
}

namespace Kaitai\Struct\Tests\NavParentFalse {
    class ParentA extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\NavParentFalse $_parent = null, ?\Kaitai\Struct\Tests\NavParentFalse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = new \Kaitai\Struct\Tests\NavParentFalse\Child($this->_io, $this, $this->_root);
            $this->_m_bar = new \Kaitai\Struct\Tests\NavParentFalse\ParentB($this->_io, $this, $this->_root);
        }
        public function foo() { return $this->_m_foo; }
        public function bar() { return $this->_m_bar; }
        protected $_m_foo;
        protected $_m_bar;
    }
}

namespace Kaitai\Struct\Tests\NavParentFalse {
    class ParentB extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\NavParentFalse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = new \Kaitai\Struct\Tests\NavParentFalse\Child($this->_io, null, $this->_root);
        }
        public function foo() { return $this->_m_foo; }
        protected $_m_foo;
    }
}
