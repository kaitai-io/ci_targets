<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ParamsDefEnumImported extends \Kaitai\Struct\Struct {
        public function __construct(int $pet1Param, int $pet2Param, \Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ParamsDefEnumImported $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_m_pet1Param = $pet1Param;
            $this->_m_pet2Param = $pet2Param;
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_pet1Param;
        protected $_m_pet2Param;
        public function pet1Param() { return $this->_m_pet1Param; }
        public function pet2Param() { return $this->_m_pet2Param; }
    }
}
