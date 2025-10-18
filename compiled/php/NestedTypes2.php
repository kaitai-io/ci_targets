<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NestedTypes2 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\NestedTypes2 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = new \Kaitai\Struct\Tests\NestedTypes2\SubtypeA($this->_io, $this, $this->_root);
            $this->_m_two = new \Kaitai\Struct\Tests\NestedTypes2\SubtypeB($this->_io, $this, $this->_root);
        }
        public function one() { return $this->_m_one; }
        public function two() { return $this->_m_two; }
        protected $_m_one;
        protected $_m_two;
    }
}

namespace Kaitai\Struct\Tests\NestedTypes2 {
    class SubtypeA extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\NestedTypes2 $_parent = null, ?\Kaitai\Struct\Tests\NestedTypes2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_typedAtRoot = new \Kaitai\Struct\Tests\NestedTypes2\SubtypeB($this->_io, $this, $this->_root);
            $this->_m_typedHere1 = new \Kaitai\Struct\Tests\NestedTypes2\SubtypeA\SubtypeC($this->_io, $this, $this->_root);
            $this->_m_typedHere2 = new \Kaitai\Struct\Tests\NestedTypes2\SubtypeA\SubtypeCc($this->_io, $this, $this->_root);
        }
        public function typedAtRoot() { return $this->_m_typedAtRoot; }
        public function typedHere1() { return $this->_m_typedHere1; }
        public function typedHere2() { return $this->_m_typedHere2; }
        protected $_m_typedAtRoot;
        protected $_m_typedHere1;
        protected $_m_typedHere2;
    }
}

namespace Kaitai\Struct\Tests\NestedTypes2\SubtypeA {
    class SubtypeC extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\NestedTypes2\SubtypeA $_parent = null, ?\Kaitai\Struct\Tests\NestedTypes2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_valueC = $this->_io->readS1();
            $this->_m_typedHere = new \Kaitai\Struct\Tests\NestedTypes2\SubtypeA\SubtypeC\SubtypeD($this->_io, $this, $this->_root);
            $this->_m_typedParent = new \Kaitai\Struct\Tests\NestedTypes2\SubtypeA\SubtypeCc($this->_io, $this, $this->_root);
            $this->_m_typedRoot = new \Kaitai\Struct\Tests\NestedTypes2\SubtypeB($this->_io, $this, $this->_root);
        }
        public function valueC() { return $this->_m_valueC; }
        public function typedHere() { return $this->_m_typedHere; }
        public function typedParent() { return $this->_m_typedParent; }
        public function typedRoot() { return $this->_m_typedRoot; }
        protected $_m_valueC;
        protected $_m_typedHere;
        protected $_m_typedParent;
        protected $_m_typedRoot;
    }
}

namespace Kaitai\Struct\Tests\NestedTypes2\SubtypeA\SubtypeC {
    class SubtypeD extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\NestedTypes2\SubtypeA\SubtypeC $_parent = null, ?\Kaitai\Struct\Tests\NestedTypes2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_valueD = $this->_io->readS1();
        }
        public function valueD() { return $this->_m_valueD; }
        protected $_m_valueD;
    }
}

namespace Kaitai\Struct\Tests\NestedTypes2\SubtypeA {
    class SubtypeCc extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\NestedTypes2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_valueCc = $this->_io->readS1();
        }
        public function valueCc() { return $this->_m_valueCc; }
        protected $_m_valueCc;
    }
}

namespace Kaitai\Struct\Tests\NestedTypes2 {
    class SubtypeB extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\NestedTypes2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_valueB = $this->_io->readS1();
        }
        public function valueB() { return $this->_m_valueB; }
        protected $_m_valueB;
    }
}
