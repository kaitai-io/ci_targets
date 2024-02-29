<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprArray extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ExprArray $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_aint = [];
            $n = 4;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_aint[] = $this->_io->readU4le();
            }
            $this->_m_afloat = [];
            $n = 3;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_afloat[] = $this->_io->readF8le();
            }
            $this->_m_astr = [];
            $n = 3;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_astr[] = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(0, false, true, true), "UTF-8");
            }
        }
        protected $_m_afloatFirst;
        public function afloatFirst() {
            if ($this->_m_afloatFirst !== null)
                return $this->_m_afloatFirst;
            $this->_m_afloatFirst = $this->afloat()[0];
            return $this->_m_afloatFirst;
        }
        protected $_m_afloatLast;
        public function afloatLast() {
            if ($this->_m_afloatLast !== null)
                return $this->_m_afloatLast;
            $this->_m_afloatLast = $this->afloat()[count($this->afloat()) - 1];
            return $this->_m_afloatLast;
        }
        protected $_m_afloatMax;
        public function afloatMax() {
            if ($this->_m_afloatMax !== null)
                return $this->_m_afloatMax;
            $this->_m_afloatMax = max($this->afloat());
            return $this->_m_afloatMax;
        }
        protected $_m_afloatMin;
        public function afloatMin() {
            if ($this->_m_afloatMin !== null)
                return $this->_m_afloatMin;
            $this->_m_afloatMin = min($this->afloat());
            return $this->_m_afloatMin;
        }
        protected $_m_afloatSize;
        public function afloatSize() {
            if ($this->_m_afloatSize !== null)
                return $this->_m_afloatSize;
            $this->_m_afloatSize = count($this->afloat());
            return $this->_m_afloatSize;
        }
        protected $_m_aintFirst;
        public function aintFirst() {
            if ($this->_m_aintFirst !== null)
                return $this->_m_aintFirst;
            $this->_m_aintFirst = $this->aint()[0];
            return $this->_m_aintFirst;
        }
        protected $_m_aintLast;
        public function aintLast() {
            if ($this->_m_aintLast !== null)
                return $this->_m_aintLast;
            $this->_m_aintLast = $this->aint()[count($this->aint()) - 1];
            return $this->_m_aintLast;
        }
        protected $_m_aintMax;
        public function aintMax() {
            if ($this->_m_aintMax !== null)
                return $this->_m_aintMax;
            $this->_m_aintMax = max($this->aint());
            return $this->_m_aintMax;
        }
        protected $_m_aintMin;
        public function aintMin() {
            if ($this->_m_aintMin !== null)
                return $this->_m_aintMin;
            $this->_m_aintMin = min($this->aint());
            return $this->_m_aintMin;
        }
        protected $_m_aintSize;
        public function aintSize() {
            if ($this->_m_aintSize !== null)
                return $this->_m_aintSize;
            $this->_m_aintSize = count($this->aint());
            return $this->_m_aintSize;
        }
        protected $_m_astrFirst;
        public function astrFirst() {
            if ($this->_m_astrFirst !== null)
                return $this->_m_astrFirst;
            $this->_m_astrFirst = $this->astr()[0];
            return $this->_m_astrFirst;
        }
        protected $_m_astrLast;
        public function astrLast() {
            if ($this->_m_astrLast !== null)
                return $this->_m_astrLast;
            $this->_m_astrLast = $this->astr()[count($this->astr()) - 1];
            return $this->_m_astrLast;
        }
        protected $_m_astrMax;
        public function astrMax() {
            if ($this->_m_astrMax !== null)
                return $this->_m_astrMax;
            $this->_m_astrMax = max($this->astr());
            return $this->_m_astrMax;
        }
        protected $_m_astrMin;
        public function astrMin() {
            if ($this->_m_astrMin !== null)
                return $this->_m_astrMin;
            $this->_m_astrMin = min($this->astr());
            return $this->_m_astrMin;
        }
        protected $_m_astrSize;
        public function astrSize() {
            if ($this->_m_astrSize !== null)
                return $this->_m_astrSize;
            $this->_m_astrSize = count($this->astr());
            return $this->_m_astrSize;
        }
        protected $_m_aint;
        protected $_m_afloat;
        protected $_m_astr;
        public function aint() { return $this->_m_aint; }
        public function afloat() { return $this->_m_afloat; }
        public function astr() { return $this->_m_astr; }
    }
}
