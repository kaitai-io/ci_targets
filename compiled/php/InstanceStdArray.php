<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class InstanceStdArray extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\InstanceStdArray $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_ofs = $this->_io->readU4le();
            $this->_m_entrySize = $this->_io->readU4le();
            $this->_m_qtyEntries = $this->_io->readU4le();
        }
        protected $_m_entries;
        public function entries() {
            if ($this->_m_entries !== null)
                return $this->_m_entries;
            $_pos = $this->_io->pos();
            $this->_io->seek($this->ofs());
            $this->_m_entries = [];
            $n = $this->qtyEntries();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_entries[] = $this->_io->readBytes($this->entrySize());
            }
            $this->_io->seek($_pos);
            return $this->_m_entries;
        }
        protected $_m_ofs;
        protected $_m_entrySize;
        protected $_m_qtyEntries;
        public function ofs() { return $this->_m_ofs; }
        public function entrySize() { return $this->_m_entrySize; }
        public function qtyEntries() { return $this->_m_qtyEntries; }
    }
}
