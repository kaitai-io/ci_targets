<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NavParentRecursive extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\NavParentRecursive $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = $this->_io->readU1();
            if ($this->value() == 255) {
                $this->_m_next = new \Kaitai\Struct\Tests\NavParentRecursive($this->_io, $this, $this->_root);
            }
        }
        protected $_m_parentValue;
        public function parentValue() {
            if ($this->_m_parentValue !== null)
                return $this->_m_parentValue;
            if ($this->value() != 255) {
                $this->_m_parentValue = $this->_parent()->value();
            }
            return $this->_m_parentValue;
        }
        protected $_m_value;
        protected $_m_next;
        public function value() { return $this->_m_value; }
        public function next() { return $this->_m_next; }
    }
}
