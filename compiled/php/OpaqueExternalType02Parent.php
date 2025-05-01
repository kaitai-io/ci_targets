<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class OpaqueExternalType02Parent extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\OpaqueExternalType02Parent $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_parent = new \Kaitai\Struct\Tests\OpaqueExternalType02Parent\ParentObj($this->_io, $this, $this->_root);
        }
        protected $_m_parent;
        public function parent() { return $this->_m_parent; }
    }
}

namespace Kaitai\Struct\Tests\OpaqueExternalType02Parent {
    class ParentObj extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\OpaqueExternalType02Parent $_parent = null, ?\Kaitai\Struct\Tests\OpaqueExternalType02Parent $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_child = new \Kaitai\Struct\Tests\OpaqueExternalType02Child($this->_io);
        }
        protected $_m_child;
        public function child() { return $this->_m_child; }
    }
}
