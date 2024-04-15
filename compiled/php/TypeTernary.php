<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class TypeTernary extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\TypeTernary $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            if (!($this->isHack())) {
                $this->_m__raw_difWoHack = $this->_io->readBytes(1);
                $_io__raw_difWoHack = new \Kaitai\Struct\Stream($this->_m__raw_difWoHack);
                $this->_m_difWoHack = new \Kaitai\Struct\Tests\TypeTernary\Dummy($_io__raw_difWoHack, $this, $this->_root);
            }
            $this->_m__raw__raw_difWithHack = $this->_io->readBytes(1);
            $this->_m__raw_difWithHack = \Kaitai\Struct\Stream::processXorOne($this->_m__raw__raw_difWithHack, 3);
            $_io__raw_difWithHack = new \Kaitai\Struct\Stream($this->_m__raw_difWithHack);
            $this->_m_difWithHack = new \Kaitai\Struct\Tests\TypeTernary\Dummy($_io__raw_difWithHack, $this, $this->_root);
        }
        protected $_m_dif;
        public function dif() {
            if ($this->_m_dif !== null)
                return $this->_m_dif;
            $this->_m_dif = (!($this->isHack()) ? $this->difWoHack() : $this->difWithHack());
            return $this->_m_dif;
        }
        protected $_m_difValue;
        public function difValue() {
            if ($this->_m_difValue !== null)
                return $this->_m_difValue;
            $this->_m_difValue = $this->dif()->value();
            return $this->_m_difValue;
        }
        protected $_m_isHack;
        public function isHack() {
            if ($this->_m_isHack !== null)
                return $this->_m_isHack;
            $this->_m_isHack = true;
            return $this->_m_isHack;
        }
        protected $_m_difWoHack;
        protected $_m_difWithHack;
        protected $_m__raw_difWoHack;
        protected $_m__raw_difWithHack;
        protected $_m__raw__raw_difWithHack;
        public function difWoHack() { return $this->_m_difWoHack; }
        public function difWithHack() { return $this->_m_difWithHack; }
        public function _raw_difWoHack() { return $this->_m__raw_difWoHack; }
        public function _raw_difWithHack() { return $this->_m__raw_difWithHack; }
        public function _raw__raw_difWithHack() { return $this->_m__raw__raw_difWithHack; }
    }
}

namespace Kaitai\Struct\Tests\TypeTernary {
    class Dummy extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\TypeTernary $_parent = null, \Kaitai\Struct\Tests\TypeTernary $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = $this->_io->readU1();
        }
        protected $_m_value;
        public function value() { return $this->_m_value; }
    }
}
