<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class CastToImported2 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Struct $hwParam, \Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\CastToImported2 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_m_hwParam = $hwParam;
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_hw;
        public function hw() {
            if ($this->_m_hw !== null)
                return $this->_m_hw;
            $this->_m_hw = $this->hwParam();
            return $this->_m_hw;
        }
        protected $_m_hwParam;
        public function hwParam() { return $this->_m_hwParam; }
    }
}
