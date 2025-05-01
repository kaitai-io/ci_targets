<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ParamsPassArrayInt extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ParamsPassArrayInt $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_ints = [];
            $n = 3;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_ints[] = $this->_io->readU2le();
            }
            $this->_m_passInts = new \Kaitai\Struct\Tests\ParamsPassArrayInt\WantsInts($this->ints(), $this->_io, $this, $this->_root);
            $this->_m_passIntsCalc = new \Kaitai\Struct\Tests\ParamsPassArrayInt\WantsInts($this->intsCalc(), $this->_io, $this, $this->_root);
        }
        protected $_m_intsCalc;
        public function intsCalc() {
            if ($this->_m_intsCalc !== null)
                return $this->_m_intsCalc;
            $this->_m_intsCalc = [27643, 7];
            return $this->_m_intsCalc;
        }
        protected $_m_ints;
        protected $_m_passInts;
        protected $_m_passIntsCalc;
        public function ints() { return $this->_m_ints; }
        public function passInts() { return $this->_m_passInts; }
        public function passIntsCalc() { return $this->_m_passIntsCalc; }
    }
}

namespace Kaitai\Struct\Tests\ParamsPassArrayInt {
    class WantsInts extends \Kaitai\Struct\Struct {
        public function __construct(array $nums, \Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\ParamsPassArrayInt $_parent = null, ?\Kaitai\Struct\Tests\ParamsPassArrayInt $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_nums = $nums;
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_nums;
        public function nums() { return $this->_m_nums; }
    }
}
