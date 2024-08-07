// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ValidFailRepeatExpr : KaitaiStruct
    {
        public static ValidFailRepeatExpr FromFile(string fileName)
        {
            return new ValidFailRepeatExpr(new KaitaiStream(fileName));
        }

        public ValidFailRepeatExpr(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailRepeatExpr p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = new List<byte[]>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _foo.Add(m_io.ReadBytes(4));
                    {
                        byte[] M_ = _foo[i];
                        if (!((KaitaiStream.ByteArrayCompare(M_, new byte[] { 0, 18, 52, 86 }) != 0)))
                        {
                            throw new ValidationExprError(_foo[i], m_io, "/seq/0");
                        }
                    }
                    i++;
                }
            }
        }
        private List<byte[]> _foo;
        private ValidFailRepeatExpr m_root;
        private KaitaiStruct m_parent;
        public List<byte[]> Foo { get { return _foo; } }
        public ValidFailRepeatExpr M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
