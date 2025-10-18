<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprIfIntOps extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ExprIfIntOps $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            if (true) {
                $this->_m_key = $this->_io->readU8le();
            }
            $this->_m_skip = $this->_io->readBytes(8);
            $this->_m__raw_bytes = $this->_io->readBytes(8);
            $this->_m_bytes = \Kaitai\Struct\Stream::processXorOne($this->_m__raw_bytes, $this->key());
            $this->_m_items = [];
            $n = 4;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_items[] = $this->_io->readS1();
            }
        }
        public function bytesSubKey() {
            if ($this->_m_bytesSubKey !== null)
                return $this->_m_bytesSubKey;
            $this->_m_bytesSubKey = ord($this->bytes()[$this->key()]);
            return $this->_m_bytesSubKey;
        }
        public function itemsSubKey() {
            if ($this->_m_itemsSubKey !== null)
                return $this->_m_itemsSubKey;
            $this->_m_itemsSubKey = $this->items()[$this->key()];
            return $this->_m_itemsSubKey;
        }
        public function key() { return $this->_m_key; }
        public function skip() { return $this->_m_skip; }
        public function bytes() { return $this->_m_bytes; }
        public function items() { return $this->_m_items; }
        public function _raw_bytes() { return $this->_m__raw_bytes; }
        protected $_m_bytesSubKey;
        protected $_m_itemsSubKey;
        protected $_m_key;
        protected $_m_skip;
        protected $_m_bytes;
        protected $_m_items;
        protected $_m__raw_bytes;
    }
}
