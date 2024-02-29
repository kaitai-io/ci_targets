<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class FloatingPoints extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\FloatingPoints $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_singleValue = $this->_io->readF4le();
            $this->_m_doubleValue = $this->_io->readF8le();
            $this->_m_singleValueBe = $this->_io->readF4be();
            $this->_m_doubleValueBe = $this->_io->readF8be();
            $this->_m_approximateValue = $this->_io->readF4le();
        }
        protected $_m_doubleValuePlusFloat;
        public function doubleValuePlusFloat() {
            if ($this->_m_doubleValuePlusFloat !== null)
                return $this->_m_doubleValuePlusFloat;
            $this->_m_doubleValuePlusFloat = ($this->doubleValue() + 0.05);
            return $this->_m_doubleValuePlusFloat;
        }
        protected $_m_singleValuePlusFloat;
        public function singleValuePlusFloat() {
            if ($this->_m_singleValuePlusFloat !== null)
                return $this->_m_singleValuePlusFloat;
            $this->_m_singleValuePlusFloat = ($this->singleValue() + 0.5);
            return $this->_m_singleValuePlusFloat;
        }
        protected $_m_singleValuePlusInt;
        public function singleValuePlusInt() {
            if ($this->_m_singleValuePlusInt !== null)
                return $this->_m_singleValuePlusInt;
            $this->_m_singleValuePlusInt = ($this->singleValue() + 1);
            return $this->_m_singleValuePlusInt;
        }
        protected $_m_singleValue;
        protected $_m_doubleValue;
        protected $_m_singleValueBe;
        protected $_m_doubleValueBe;
        protected $_m_approximateValue;
        public function singleValue() { return $this->_m_singleValue; }
        public function doubleValue() { return $this->_m_doubleValue; }
        public function singleValueBe() { return $this->_m_singleValueBe; }
        public function doubleValueBe() { return $this->_m_doubleValueBe; }
        public function approximateValue() { return $this->_m_approximateValue; }
    }
}
