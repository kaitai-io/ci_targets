<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ParamsDefArrayUsertypeImported extends \Kaitai\Struct\Struct {
        public function __construct(array $hwsParam, \Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ParamsDefArrayUsertypeImported $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_m_hwsParam = $hwsParam;
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_hw0One;
        public function hw0One() {
            if ($this->_m_hw0One !== null)
                return $this->_m_hw0One;
            $this->_m_hw0One = $this->hwsParam()[0]->one();
            return $this->_m_hw0One;
        }
        protected $_m_hw1One;
        public function hw1One() {
            if ($this->_m_hw1One !== null)
                return $this->_m_hw1One;
            $this->_m_hw1One = $this->hwsParam()[1]->one();
            return $this->_m_hw1One;
        }
        protected $_m_hwsParam;
        public function hwsParam() { return $this->_m_hwsParam; }
    }
}
