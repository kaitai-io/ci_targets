// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidFailExpr : KaitaiStruct
    {
        public static ValidFailExpr FromFile(string fileName)
        {
            return new ValidFailExpr(new KaitaiStream(fileName));
        }

        public ValidFailExpr(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailExpr p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = m_io.ReadU1();
            {
                byte M_ = _foo;
                if (!(M_ == 1))
                {
                    throw new ValidationExprError(_foo, m_io, "/seq/0");
                }
            }
            _bar = m_io.ReadS2le();
            {
                short M_ = _bar;
                if (!( ((M_ < -190) || (M_ > -190)) ))
                {
                    throw new ValidationExprError(_bar, m_io, "/seq/1");
                }
            }
        }
        private byte _foo;
        private short _bar;
        private ValidFailExpr m_root;
        private KaitaiStruct m_parent;
        public byte Foo { get { return _foo; } }
        public short Bar { get { return _bar; } }
        public ValidFailExpr M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
