module Kyu6.SimpleIndicesSpec where
import Kyu6.SimpleIndices
import Test.Hspec

spec :: Spec
spec = do
  describe "Simple string indices" $ do
    it "Basic tests" $ do
      solve "((1)23(45))(aB)" 0 `shouldBe` Just 10
      solve "((1)23(45))(aB)" 1 `shouldBe` Just 3
      solve "((1)23(45))(aB)" 2 `shouldBe` Nothing
      solve "((1)23(45))(aB)" 6 `shouldBe` Just 9
      solve "((1)23(45))(aB)" 11 `shouldBe` Just 14
      solve "(g(At)IO(f)(tM(qk)YF(n)Nr(E)))" 11 `shouldBe` Just 28
      solve "(g(At)IO(f)(tM(qk)YF(n)Nr(E)))" 0 `shouldBe` Just 29
      solve "(>_(va)`?(h)C(as)(x(hD)P|(fg)))" 19 `shouldBe` Just 22
      solve "(#(o)C(*)y(pb)V(t)1h(9)|(1)E(FE)x(LF)(LF(pb)v(#)R(#)gH(FE)A(^)9Y(Oz)#(p)Vt(_)E(HU)R(2K)6(k)7I(j_)V(qP)Q(fn)(*0(9Y)ox(i)l(D)&w(w)&(4)*0(LF)0(bS)R(tM)C(<G)*0(|)L(8C)U7(o)(Oz(34)K8(CZ)L(P|)6j(1)U(fn)p(K8)(x>(D3)_(R~)Vt(l*)x(`)QN(N)CZ(CZ)e(&w)@(5)g(C)n(1)(Y(pb)_(TJ)T(@d)b(~)vu(Q)9Y(I)c(2K)@(#)tM(<G)(bS(x>)6j(+)5?(TJ)Ic(HU)H(~l)S(1)E(vu)(M(HU)K8(||)~l(h)t(np)GX(K)e(qP)))))))))" 13 `shouldBe` Nothing
