<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ImportsParamsDefEnumImported extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ImportsParamsDefEnumImported $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = new \Kaitai\Struct\Tests\EnumImportSeq($this->_io);
            $this->_m_two = new \Kaitai\Struct\Tests\ParamsDefEnumImported($this->one()->pet1(), $this->one()->pet2(), $this->_io);
        }
        protected $_m_one;
        protected $_m_two;
        public function one() { return $this->_m_one; }
        public function two() { return $this->_m_two; }
    }
}
