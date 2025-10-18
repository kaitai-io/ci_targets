<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class InstanceInRepeatUntil extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\InstanceInRepeatUntil $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_entries = [];
            $i = 0;
            do {
                $_ = $this->_io->readS2le();
                $this->_m_entries[] = $_;
                $i++;
            } while (!($_ == $this->untilVal()));
        }
        public function untilVal() {
            if ($this->_m_untilVal !== null)
                return $this->_m_untilVal;
            $_pos = $this->_io->pos();
            $this->_io->seek($this->_io()->pos() + 12);
            $this->_m_untilVal = $this->_io->readS2le();
            $this->_io->seek($_pos);
            return $this->_m_untilVal;
        }
        public function entries() { return $this->_m_entries; }
        protected $_m_untilVal;
        protected $_m_entries;
    }
}
