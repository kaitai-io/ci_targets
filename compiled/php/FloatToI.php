<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class FloatToI extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\FloatToI $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_singleValue = $this->_io->readF4le();
            $this->_m_doubleValue = $this->_io->readF8le();
            if (true) {
                $this->_m_singleValueIf = $this->_io->readF4be();
            }
            if (true) {
                $this->_m_doubleValueIf = $this->_io->readF8be();
            }
        }
        public function calcFloat1() {
            if ($this->_m_calcFloat1 !== null)
                return $this->_m_calcFloat1;
            $this->_m_calcFloat1 = 1.234;
            return $this->_m_calcFloat1;
        }
        public function calcFloat2() {
            if ($this->_m_calcFloat2 !== null)
                return $this->_m_calcFloat2;
            $this->_m_calcFloat2 = 1.5;
            return $this->_m_calcFloat2;
        }
        public function calcFloat3() {
            if ($this->_m_calcFloat3 !== null)
                return $this->_m_calcFloat3;
            $this->_m_calcFloat3 = 1.9;
            return $this->_m_calcFloat3;
        }
        public function calcFloat4() {
            if ($this->_m_calcFloat4 !== null)
                return $this->_m_calcFloat4;
            $this->_m_calcFloat4 = -2.7;
            return $this->_m_calcFloat4;
        }
        public function calcIf() {
            if ($this->_m_calcIf !== null)
                return $this->_m_calcIf;
            $this->_m_calcIf = 13.9;
            return $this->_m_calcIf;
        }
        public function calcIfI() {
            if ($this->_m_calcIfI !== null)
                return $this->_m_calcIfI;
            $this->_m_calcIfI = intval($this->calcIf());
            return $this->_m_calcIfI;
        }
        public function doubleI() {
            if ($this->_m_doubleI !== null)
                return $this->_m_doubleI;
            $this->_m_doubleI = intval($this->doubleValue());
            return $this->_m_doubleI;
        }
        public function doubleIfI() {
            if ($this->_m_doubleIfI !== null)
                return $this->_m_doubleIfI;
            $this->_m_doubleIfI = intval($this->doubleValueIf());
            return $this->_m_doubleIfI;
        }
        public function float1I() {
            if ($this->_m_float1I !== null)
                return $this->_m_float1I;
            $this->_m_float1I = intval($this->calcFloat1());
            return $this->_m_float1I;
        }
        public function float2I() {
            if ($this->_m_float2I !== null)
                return $this->_m_float2I;
            $this->_m_float2I = intval($this->calcFloat2());
            return $this->_m_float2I;
        }
        public function float3I() {
            if ($this->_m_float3I !== null)
                return $this->_m_float3I;
            $this->_m_float3I = intval($this->calcFloat3());
            return $this->_m_float3I;
        }
        public function float4I() {
            if ($this->_m_float4I !== null)
                return $this->_m_float4I;
            $this->_m_float4I = intval($this->calcFloat4());
            return $this->_m_float4I;
        }
        public function singleI() {
            if ($this->_m_singleI !== null)
                return $this->_m_singleI;
            $this->_m_singleI = intval($this->singleValue());
            return $this->_m_singleI;
        }
        public function singleIfI() {
            if ($this->_m_singleIfI !== null)
                return $this->_m_singleIfI;
            $this->_m_singleIfI = intval($this->singleValueIf());
            return $this->_m_singleIfI;
        }
        public function singleValue() { return $this->_m_singleValue; }
        public function doubleValue() { return $this->_m_doubleValue; }
        public function singleValueIf() { return $this->_m_singleValueIf; }
        public function doubleValueIf() { return $this->_m_doubleValueIf; }
        protected $_m_calcFloat1;
        protected $_m_calcFloat2;
        protected $_m_calcFloat3;
        protected $_m_calcFloat4;
        protected $_m_calcIf;
        protected $_m_calcIfI;
        protected $_m_doubleI;
        protected $_m_doubleIfI;
        protected $_m_float1I;
        protected $_m_float2I;
        protected $_m_float3I;
        protected $_m_float4I;
        protected $_m_singleI;
        protected $_m_singleIfI;
        protected $_m_singleValue;
        protected $_m_doubleValue;
        protected $_m_singleValueIf;
        protected $_m_doubleValueIf;
    }
}
