<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NestedTypesImport extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\NestedTypesImport $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_aCc = new \Kaitai\Struct\Tests\NestedTypes3\SubtypeA\SubtypeCc($this->_io);
            $this->_m_aCD = new \Kaitai\Struct\Tests\NestedTypes3\SubtypeA\SubtypeC\SubtypeD($this->_io);
            $this->_m_b = new \Kaitai\Struct\Tests\NestedTypes3\SubtypeB($this->_io);
        }
        protected $_m_aCc;
        protected $_m_aCD;
        protected $_m_b;
        public function aCc() { return $this->_m_aCc; }
        public function aCD() { return $this->_m_aCD; }
        public function b() { return $this->_m_b; }
    }
}
