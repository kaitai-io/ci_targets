<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NestedSameName2 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\NestedSameName2 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_version = $this->_io->readU4le();
            $this->_m_mainData = new \Kaitai\Struct\Tests\NestedSameName2\Main($this->_io, $this, $this->_root);
            $this->_m_dummy = new \Kaitai\Struct\Tests\NestedSameName2\DummyObj($this->_io, $this, $this->_root);
        }
        protected $_m_version;
        protected $_m_mainData;
        protected $_m_dummy;
        public function version() { return $this->_m_version; }
        public function mainData() { return $this->_m_mainData; }
        public function dummy() { return $this->_m_dummy; }
    }
}

namespace Kaitai\Struct\Tests\NestedSameName2 {
    class DummyObj extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NestedSameName2 $_parent = null, \Kaitai\Struct\Tests\NestedSameName2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_dummySize = $this->_io->readS4le();
            $this->_m_foo = new \Kaitai\Struct\Tests\NestedSameName2\DummyObj\FooObj($this->_io, $this, $this->_root);
        }
        protected $_m_dummySize;
        protected $_m_foo;
        public function dummySize() { return $this->_m_dummySize; }
        public function foo() { return $this->_m_foo; }
    }
}

namespace Kaitai\Struct\Tests\NestedSameName2\DummyObj {
    class FooObj extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NestedSameName2\DummyObj $_parent = null, \Kaitai\Struct\Tests\NestedSameName2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_data2 = $this->_io->readBytes($this->_parent()->dummySize() * 2);
        }
        protected $_m_data2;
        public function data2() { return $this->_m_data2; }
    }
}

namespace Kaitai\Struct\Tests\NestedSameName2 {
    class Main extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NestedSameName2 $_parent = null, \Kaitai\Struct\Tests\NestedSameName2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_mainSize = $this->_io->readS4le();
            $this->_m_foo = new \Kaitai\Struct\Tests\NestedSameName2\Main\FooObj($this->_io, $this, $this->_root);
        }
        protected $_m_mainSize;
        protected $_m_foo;
        public function mainSize() { return $this->_m_mainSize; }
        public function foo() { return $this->_m_foo; }
    }
}

namespace Kaitai\Struct\Tests\NestedSameName2\Main {
    class FooObj extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NestedSameName2\Main $_parent = null, \Kaitai\Struct\Tests\NestedSameName2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_data1 = $this->_io->readBytes($this->_parent()->mainSize() * 2);
        }
        protected $_m_data1;
        public function data1() { return $this->_m_data1; }
    }
}
