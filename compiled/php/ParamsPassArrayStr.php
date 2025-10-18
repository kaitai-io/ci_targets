<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ParamsPassArrayStr extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ParamsPassArrayStr $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_strArray = [];
            $n = 3;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_strArray[] = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(2), "ASCII");
            }
            $this->_m_passStrArray = new \Kaitai\Struct\Tests\ParamsPassArrayStr\WantsStrs($this->strArray(), $this->_io, $this, $this->_root);
            $this->_m_passStrArrayCalc = new \Kaitai\Struct\Tests\ParamsPassArrayStr\WantsStrs($this->strArrayCalc(), $this->_io, $this, $this->_root);
        }
        public function strArrayCalc() {
            if ($this->_m_strArrayCalc !== null)
                return $this->_m_strArrayCalc;
            $this->_m_strArrayCalc = ["aB", "Cd"];
            return $this->_m_strArrayCalc;
        }
        public function strArray() { return $this->_m_strArray; }
        public function passStrArray() { return $this->_m_passStrArray; }
        public function passStrArrayCalc() { return $this->_m_passStrArrayCalc; }
        protected $_m_strArrayCalc;
        protected $_m_strArray;
        protected $_m_passStrArray;
        protected $_m_passStrArrayCalc;
    }
}

namespace Kaitai\Struct\Tests\ParamsPassArrayStr {
    class WantsStrs extends \Kaitai\Struct\Struct {
        public function __construct(array $strs, \Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\ParamsPassArrayStr $_parent = null, ?\Kaitai\Struct\Tests\ParamsPassArrayStr $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_strs = $strs;
            $this->_read();
        }

        private function _read() {
        }
        public function strs() { return $this->_m_strs; }
        protected $_m_strs;
    }
}
