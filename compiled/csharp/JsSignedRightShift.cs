// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class JsSignedRightShift : KaitaiStruct
    {
        public static JsSignedRightShift FromFile(string fileName)
        {
            return new JsSignedRightShift(new KaitaiStream(fileName));
        }

        public JsSignedRightShift(KaitaiStream p__io, KaitaiStruct p__parent = null, JsSignedRightShift p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_shouldBe40000000 = false;
            f_shouldBeA00000 = false;
            _read();
        }
        private void _read()
        {
        }
        private bool f_shouldBe40000000;
        private int _shouldBe40000000;
        public int ShouldBe40000000
        {
            get
            {
                if (f_shouldBe40000000)
                    return _shouldBe40000000;
                f_shouldBe40000000 = true;
                _shouldBe40000000 = (int) (2147483648 >> 1);
                return _shouldBe40000000;
            }
        }
        private bool f_shouldBeA00000;
        private int _shouldBeA00000;
        public int ShouldBeA00000
        {
            get
            {
                if (f_shouldBeA00000)
                    return _shouldBeA00000;
                f_shouldBeA00000 = true;
                _shouldBeA00000 = (int) (2684354560 >> 8);
                return _shouldBeA00000;
            }
        }
        private JsSignedRightShift m_root;
        private KaitaiStruct m_parent;
        public JsSignedRightShift M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
