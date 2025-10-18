<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NestedTypes extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\NestedTypes $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = new \Kaitai\Struct\Tests\NestedTypes\SubtypeA($this->_io, $this, $this->_root);
            $this->_m_two = new \Kaitai\Struct\Tests\NestedTypes\SubtypeB($this->_io, $this, $this->_root);
        }
        public function one() { return $this->_m_one; }
        public function two() { return $this->_m_two; }
        protected $_m_one;
        protected $_m_two;
    }
}

namespace Kaitai\Struct\Tests\NestedTypes {
    class SubtypeA extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\NestedTypes $_parent = null, ?\Kaitai\Struct\Tests\NestedTypes $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_typedAtRoot = new \Kaitai\Struct\Tests\NestedTypes\SubtypeB($this->_io, $this, $this->_root);
            $this->_m_typedHere = new \Kaitai\Struct\Tests\NestedTypes\SubtypeA\SubtypeC($this->_io, $this, $this->_root);
        }
        public function typedAtRoot() { return $this->_m_typedAtRoot; }
        public function typedHere() { return $this->_m_typedHere; }
        protected $_m_typedAtRoot;
        protected $_m_typedHere;
    }
}

namespace Kaitai\Struct\Tests\NestedTypes\SubtypeA {
    class SubtypeC extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\NestedTypes\SubtypeA $_parent = null, ?\Kaitai\Struct\Tests\NestedTypes $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_valueC = $this->_io->readS1();
        }
        public function valueC() { return $this->_m_valueC; }
        protected $_m_valueC;
    }
}

namespace Kaitai\Struct\Tests\NestedTypes {
    class SubtypeB extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\NestedTypes $_root = null) {
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
