// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidFailRangeFloat : KaitaiStruct
    {
        public static ValidFailRangeFloat FromFile(string fileName)
        {
            return new ValidFailRangeFloat(new KaitaiStream(fileName));
        }

        public ValidFailRangeFloat(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailRangeFloat p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = m_io.ReadF4le();
            if (!(_foo >= 0.25))
            {
                throw new ValidationLessThanError(0.25, _foo, m_io, "/seq/0");
            }
            if (!(_foo <= 0.375))
            {
                throw new ValidationGreaterThanError(0.375, _foo, m_io, "/seq/0");
            }
        }
        private float _foo;
        private ValidFailRangeFloat m_root;
        private KaitaiStruct m_parent;
        public float Foo { get { return _foo; } }
        public ValidFailRangeFloat M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
